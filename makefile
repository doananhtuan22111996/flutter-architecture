## Mac OS
denied:
	cd scripts && chmod +x pre-bootstrap.sh

pre-bootstrap:
	cd scripts && ./pre-bootstrap.sh
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
	dart run scripts/build_app.dart $(flavor) ipa $(buildName) $(buildNumber)

build-android-apk:
	@melos gen-env $(flavor)
	dart run scripts/build_app.dart $(flavor) apk $(buildName) $(buildNumber)

build-android-aab:
	@melos gen-env $(flavor)
	dart run scripts/build_app.dart $(flavor) aab $(buildName) $(buildNumber)

create-env:
	@melos create-env
