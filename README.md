# react-native-magtek (iOS Only)

## Getting started
`$ yarn add git+https://github.com/dlents/react-native-magtek.git`

#### Using cocoapods
Add the following lines in your `Podfile`
```ruby
  pod 'RNMagtek', path: '../node_modules/@dlents/react-native-magtek/ios'
```
and then run `pod install`.

### Manual installation

#### iOS (Deprecated with current version of XCode, use CocoaPods instead)
1. In XCode, in the project navigator, right click `Libraries` ➜ `Add Files to [your project's name]`
2. Go to `node_modules` ➜ `@dlents/react-native-magtek` and add `RNMagtek.xcodeproj`
3. In XCode, in the project navigator, select your project. Add `libRNMagtek.a` to your project's `Build Phases` ➜ `Link Binary With Libraries`
4. Run your project (`Cmd+R`)<

## Usage
```javascript
import RNMagtek, { RNMagtekEventsEmitter } from '@dlents/react-native-magtek';

# Connect device
RNMagtek.connect((data) => {
  const { isDeviceConnected, isDeviceOpened } = data;
  if (isDeviceConnected && isDeviceOpened) {
    console.log("Card reader is connected and ready!!!");
  }
});

# Add listener to check device connection
RNMagtekEventsEmitter.addListener('onDeviceConnectionDidChange', (data) => {
  const { isDeviceConnected } = data;
  if (!isDeviceConnected) {
    console.log("Opps! Device have been disconnected.");
  }
});

# Add listener to receive card data
RNMagtekEventsEmitter.addListener(
  'onDataReceived',
  (data) => {
    console.log(data)
    // The data object has the following attributes:
    // sessionID, deviceSN, deviceKSN, magnePrint, magnePrintStatus,
    // track1, track2, track3
  }
);
```
### Note
Remember to delete the listener before creating a new one or your transaction will be processed multiple times
