FRAMEWORK:=SwiftCLib

make-xcframework:
# delete previous artifacts and regenerate folder structure
	rm -rf output/archives | true
	rm -rf ./output/${FRAMEWORK}.xcframework | true
	mkdir -p output/archives
# iOS archive
	cd SwiftCLib && xcodebuild archive \
		-scheme ${FRAMEWORK} \
		-configuration Release \
		-destination "generic/platform=iOS" \
		-archivePath ../output/archives/${FRAMEWORK}-iOS \
		SKIP_INSTALL=NO \
		BUILD_LIBRARY_FOR_DISTRIBUTION=YES
# Simulator archive
	cd SwiftCLib && xcodebuild archive \
		-scheme ${FRAMEWORK} \
		-configuration Release \
		-destination "generic/platform=iOS Simulator" \
		-archivePath ../output/archives/${FRAMEWORK}-Sim \
		SKIP_INSTALL=NO \
		BUILD_LIBRARY_FOR_DISTRIBUTION=YES
# macOS archive
	cd SwiftCLib && xcodebuild archive \
		-scheme ${FRAMEWORK} \
		-configuration Release \
		-destination "platform=macOS,arch=x86_64,variant=Mac Catalyst" \
		-archivePath ../output/archives/${FRAMEWORK}-macOS \
		SKIP_INSTALL=NO \
		BUILD_LIBRARY_FOR_DISTRIBUTION=YES

# create xcframework
	cd output && xcodebuild -create-xcframework \
		-framework ./archives/${FRAMEWORK}-iOS.xcarchive/Products/Library/Frameworks/${FRAMEWORK}.framework \
		-framework ./archives/${FRAMEWORK}-Sim.xcarchive/Products/Library/Frameworks/${FRAMEWORK}.framework \
		-framework ./archives/${FRAMEWORK}-macOS.xcarchive/Products/Library/Frameworks/${FRAMEWORK}.framework \
		-output ./${FRAMEWORK}.xcframework
