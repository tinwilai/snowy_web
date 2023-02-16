# snowyweb

A Flutter web for the Snowy project.

## The Snowy Project

A snow sculpture contest made in collaboration with Nagaoka city's snow festival.

Website: [Snowy | Nagaoka Snow Sculpture Contest](https://tinwilai.github.io/snowy_web/)[^3]\
Instagram: [snowy_nagaoka](https://www.instagram.com/snowy_nagaoka/)\
Email: [snowy.nagaoka@gmail.com](mailto:snowy.nagaoka@gmail.com)

## To-do

- [ ] Create Home page
  - [x] ~~Create top section~~
  - [x] ~~Create concept section~~
  - [x] ~~Create schedule section~~
  - [x] ~~Create rule section~~
  - [x] ~~Create location section (Embedded maps)~~
  - [ ] Add button to Forms\
         (at Top and Bottom)
  - [x] ~~Add scroll snap~~
  - [ ] Decorate
  - [ ] Add animations
- [ ] Create About us page
  - [ ] Create layout
  - [ ] Request + Enter title, role, description
  - [ ] Request + insert everyone's pictures
  - [ ] Decorate
  - [ ] Add animations
- [ ] Create Access page[^1]
  - [ ] Move map to here
  - [ ] Access from station
    - [ ] ?[^2]
  - [ ] Decorate
  - [ ] Add animations
- [ ] Translate pages
  - [ ] Home page
  - [ ] About us page
  - [ ] Access page
- [ ] Dynamic size adjustment

## Notes

The Dart source codes are in the `lib` folder.\
The build files are in the `build/web` folder.\
The build command is `flutter build web --base-href /snowy_web/`
to set base for hrefs in html to the repository root folder not the root of the github pages.[^3]

---

## Attribution Statements

This Flutter project is made possible with these projects:

### Software Development Kits (SDKs)

- [Flutter](https://flutter.dev/)
  by [Google](https://www.google.org/)
  ([BSD-3-Clause license](https://choosealicense.com/licenses/bsd-3-clause/))
- [Dart](https://dart.dev/)
  by [Google](https://www.google.org/)
  ([BSD-3-Clause license](https://choosealicense.com/licenses/bsd-3-clause/))

### Application Programming Interfaces (APIs)

- [Maps Embed API](https://developers.google.com/maps/documentation/embed)
  by [Google](https://www.google.org/)
  ([Attribution guidelines](https://about.google/brand-resource-center/products-and-services/geo-guidelines/#required-attribution))

### Flutter packages

- [cupertino_icons](https://pub.dev/packages/cupertino_icons)
  by [flutter.dev](https://pub.dev/publishers/flutter.dev/packages)
  ([MIT license](https://choosealicense.com/licenses/mit/))
- [go_router](https://pub.dev/packages/go_router)
  by [flutter.dev](https://pub.dev/publishers/flutter.dev/packages)
  ([BSD-3-Clause license](https://choosealicense.com/licenses/bsd-3-clause/))

### Fonts

- [M PLUS Rounded 1c](https://mplusfonts.github.io/)
  by [Coji Morishita](http://www.underforest.com/)
  ([SIL Open Font License](https://scripts.sil.org/cms/scripts/page.php?site_id=nrsi&id=OFL_web))
- [Blanka](https://troisieme-type.com/blanka)
  by [Emmeran Richard](https://www.emmeranrichard.fr/)
  ([License](https://troisieme-type.com/blanka))

### Others

- [Visual Studio Code](https://code.visualstudio.com/)
  by [Microsoft](https://www.microsoft.com/)
  ([MIT license](https://choosealicense.com/licenses/mit/))
- [GitHub](https://github.com/)
  by [Microsoft](https://www.microsoft.com/)
  ([Terms](https://docs.github.com/en/site-policy/github-terms/github-open-source-applications-terms-and-conditions))

[^1]: Might be merged with Home page.
[^2]: To be wriiten later.
[^3]:
    Current website hosting on Github Pages.
    Once finished, will change domain.
