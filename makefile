## Mac OS
denied:
	cd scripts && chmod +x pre-bootstrap.sh

pre-bootstrap:
	cd scripts && sh pre-bootstrap.sh
	fvm install 3.22.3
	fvm use 3.22.3 --force
	fvm flutter --version

pub-get:
	@melos clean --sdk-path=.fvm/flutter_sdk
	@melos bootstrap --sdk-path=.fvm/flutter_sdk
	@melos gen-app-icon
	@melos gen-app-splash
	@melos build-domain
	@melos build-data
	@melos build-resources
	@melos gen-strings

run:
	@melos gen-env $(flavor)
	dart run scripts/run_app.dart $(flavor)

widget-book:
	@melos gen-env $(flavor)
	dart run scripts/run_widget_book.dart $(flavor)

build-ios:
	@melos gen-env $(flavor)
	dart run scripts/build_app.dart $(flavor) ipa

build-android-apk:
	@melos gen-env $(flavor)
	dart run scripts/build_app.dart $(flavor) apk

build-android-aab:
	@melos gen-env $(flavor)
	dart run scripts/build_app.dart $(flavor) aab

deploy-ios:
	@melos gen-env $(flavor)
	dart run scripts/build_app.dart $(flavor) ipa $(buildName) $(buildNumber)

deploy-android-apk:
	@melos gen-env $(flavor)
	dart run scripts/build_app.dart $(flavor) apk $(buildName) $(buildNumber)

deploy-android-aab:
	@melos gen-env $(flavor)
	dart run scripts/build_app.dart $(flavor) aab $(buildName) $(buildNumber)

create-env:
	@melos create-env

############################################ Github Action #########################################

gh-pub-get:
	fvm flutter pub global run melos clean --sdk-path=.fvm/flutter_sdk
	fvm flutter pub global run melos bootstrap --sdk-path=.fvm/flutter_sdk
	fvm flutter pub global run melos gen-app-icon
	fvm flutter pub global run melos gen-app-splash
	fvm flutter pub global run melos build-domain
	fvm flutter pub global run melos build-data
	fvm flutter pub global run melos build-resources
	fvm flutter pub global run melos gen-strings

gh-build-ios:
	fvm flutter pub global run melos gen-env $(flavor)
	dart run scripts/build_app.dart $(flavor) ipa

gh-build-android:
	fvm flutter pub global run melos gen-env $(flavor)
	dart run scripts/build_app.dart $(flavor) aab

gh-deploy-ios:
	fvm flutter pub global run melos gen-env $(flavor)
	dart run scripts/deploy_app.dart $(flavor) ipa $(buildName) $(buildNumber)

gh-deploy-android-apk:
	fvm flutter pub global run melos gen-env $(flavor)
	dart run scripts/deploy_app.dart $(flavor) apk $(buildName) $(buildNumber)

gh-deploy-android-aab:
	fvm flutter pub global run melos gen-env $(flavor)
	dart run scripts/deploy_app.dart $(flavor) aab $(buildName) $(buildNumber)
