<p align="center">
 <img src="https://github.com/iamtheblackunicorn/hautecouture/raw/main/assets/images/banner.png"/>
</p>

# HAUTE COUTURE :dark_sunglasses:

*A small app about the people who shaped the modern world of fashion.* :dark_sunglasses:

## About :books:

I was shopping for some accessories the other day and was also out of ideas for apps. So! I decided to write an app that pays homage to the great fashion designers of our time. Not only have they shaped the modern fashion scene but their fashion houses will shape what we wear for many years still to come! Download the app today and find out a little more about your favourite fashion houses and the unique people that created them!

## Download :inbox_tray:

- *Spring SS21* (v.1.0.0):
  - [Download for Android](https://github.com/iamtheblackunicorn/hautecouture/releases/download/v.1.0.0/HauteCouture-v1.0.0-SpringSS21-Release.apk) (16.9 MB)
  - [Download for Mac OSX](https://github.com/iamtheblackunicorn/hautecouture/releases/download/v.1.0.0/HauteCouture-v1.0.0-SpringSS21.app.zip) (12.36 MB)

## Google Play :robot:

[![Get it on Google Play!](https://blckunicorn.art/assets/images/static/GooglePlayDownload.png)](https://play.google.com/store/apps/details?id=com.blackunicorn.hautecouture)

## Building :hammer:

Make sure that you have the following programmes installed:

- Flutter SDK
- Dart SDK
- Android Studio
- Android SDK
- Java JDK
- Xcode
- Make
- Git

After you have installed these, run this command to generate a keystore for the app.

```bash
$ keytool -genkey -v -keystore key.jks -keyalg RSA -keysize 2048 -validity 10000 -alias key
```

After having done that, move the Java keystore to `android/app` and fill in the fields for the keystore password in the file `android/app/key.properties`.

Finally, run these commands:

```bash
$ flutter pub get
$ flutter build apk
```

You have now generated a release build of *Haute Couture*.

## Changelog :black_nib:

### Version 1.0.0: Spring SS21

- upload to GitHub
- polishing of the logic
- minor fixes

## Note :scroll:

- *Haute Couture :dark_sunglasses:* by Alexander Abraham :black_heart: a.k.a. *"The Black Unicorn" :unicorn:*
- Licensed under the MIT license.
