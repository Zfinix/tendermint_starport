## 📸 Screen Shots

<p float="left">
<img src="https://github.com/Zfinix/tendermint_starport/blob/master/1.png?raw=true" width="200">
<img src="https://github.com/Zfinix/tendermint_starport/blob/master/2.png?raw=true" width="200">
<img src="https://github.com/Zfinix/tendermint_starport/blob/master/3.png?raw=true" width="200">
<img src="https://github.com/Zfinix/tendermint_starport/blob/master/4.png?raw=true" width="200">
</p>

## Setup and run Flutter app

- [Setup Flutter based on your operating system](https://flutter.dev/docs/get-started/install)
- Make sure you follow all the steps above and have an all-green output of `flutter doctor` command.
- [Install and run Anroid Studio once](https://developer.android.com/studio/install)
- (For iOS) Install XCode from AppStore
- You can use Android Studio, [IntelliJ Idea](https://www.jetbrains.com/idea/download), or [VSCode](https://code.visualstudio.com/download) for Flutter development
- Install Flutter plugin in your chosen IDE
- Clone this repository using `git clone https://github.com/tendermint/flutter.git`
- To run it on your `localhost` environment, you will just have to run `main.dart` file in your project. That can be done directly by clicking on the play button in your IDE, or by running `flutter run` from the root of your project. This will run the app on any device or simulator connected to your system
- If you're running the app on real device instead of emulator/simulator or want to taget a specific blockchain run on a remote machine, make sure to specify proper urls and ports when running the app. Here is an example for running the app on cosmos hub testnet:

Please run with:
```
flutter run --dart-define=LCD_URL=https://api.testnet.cosmos.network --dart-define=LCD_PORT=443 --dart-define=GRPC_URL=https://grpc.testnet.cosmos.network --dart-define=GRPC_PORT=443
```

I have been able to perform a swap using the CLI tool but not the api:

```bash
gaiad tx liquidity swap 14 1 100000uphoton ibc/070B20BE0D1576B9AFBF54428BDF092B26B0D43B84D0EF1E779CBE8240000355 1000 0.003 --from alice --chain-id cosmoshub-testnet --gas-prices "0.03uphoton" --node https://testnet.cosmos.network:443
```

![image](https://user-images.githubusercontent.com/25801929/151596206-644eb8e5-8560-4858-9701-61828b28731e.png)
