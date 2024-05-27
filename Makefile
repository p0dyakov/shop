# Without FVM

gen:
	@echo "Running build runner"
	@flutter pub run build_runner build --delete-conflicting-outputs

init:
	@echo "Getting latest dependencies"
	@flutter pub get
	@echo "Running build runner"
	@flutter pub run build_runner build --delete-conflicting-outputs
	@echo "Generating automated localizations"
	@flutter gen-l10n

get:
	@echo "Getting latest dependencies"
	@flutter pub get

upgrade:
	@echo "Upgrading dependencies"
	@flutter pub upgrade

upgrademajor:
	@echo "Upgrading dependencies --major-versions"
	@flutter pub upgrade --major-versions

clean:
	@echo "Cleaning the project"
	@flutter clean
	@make finit

format:
	@echo "Formatting code"
	@dart fix --apply
	@dart format -l 120 --fix .

genicon:
	@echo "Generating app icons"
	@flutter pub run flutter_launcher_icons:main -f flutter_launcher_icons.yaml

ln:
	@echo "Generating automated localizations"
	@flutter gen-l10n

# With FVM

fgen:
	@echo "Running build runner"
	@fvm flutter pub run build_runner build --delete-conflicting-outputs

finit:
	@echo "Getting latest dependencies"
	@fvm flutter pub get
	@echo "Running build runner"
	@fvm flutter pub run build_runner build --delete-conflicting-outputs
	@echo "Generating automated localizations"
	@fvm flutter gen-l10n

fget:
	@echo "Getting latest dependencies"
	@fvm flutter pub get

fupgrade:
	@echo "Upgrading dependencies"
	@fvm flutter pub upgrade

fupgrademajor:
	@echo "Upgrading dependencies --major-versions"
	@fvm flutter pub upgrade --major-versions

fclean:
	@echo "Cleaning the project"
	@fvm flutter clean
	@make finit

fgenicon:
	@echo "Generating app icons"
	@fvm flutter pub run flutter_launcher_icons:main -f flutter_launcher_icons.yaml

fln:
	@echo "Generating automated localizations"
	@fvm flutter gen-l10n