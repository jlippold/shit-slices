# 💩 shit slices

A shittier, bash version of slices for iOS 11

## Usage

This is terminal based, so you'll need to ssh to your phone to run commands, or use NewTerm 2 on cydia.

### Create a new profile

To create a new slice, open a terminal window and type

```
slices "Snapchat" create new-profile
```

In the above example:

`Snapchat` is the name of the app as shown under the app's icon (case sensitive)
`create` is to make a new profile
`new-profile` is the name I chose for the new profile

Once this command is run, the script will create 2 profiles, one named `new-profile` and the other named `original`. The `original` profile's name can't be changed, as it's a system profile.  Also, profile names should not contain spaces.

### Switch profiles

Continuing from the above example, the current active profile is `new-profile`. You can open Snapchat, log out, and log in to a new account. To apply the original profile, type:

```
slices "Snapchat" apply original
```

To switch back to the other profile, type

```
slices "Snapchat" apply new-profile
```

## Activator

Since there's no UI, and it's a pain in the ass to enter these commands by hand, we can use Activator to setup easy app switching.

Go to activator settings, choose `Anywhere` < `Build` < `Icon Flick Up`, then choose Snapchat.

Then `Anywhere` < `Snapchat Icon Flick Up` < `Build` < `Run Command`

Then enter the terminal command `slices "Snapchat" apply original`

Repeat the same process above, but do it for `Icon Flick Down`, and set the command to apply `new-profile`

Now swipe up on the snapchat icon, and wait a few seconds and Snapchat will start using the original profile.

Now swipe down on the snapchat icon, and wait a few seconds and Snapchat will start using new-profile.

Of course, the options are many here, and you don't have to use icon flick. You could also make a menu in activator with each profile as an option in the menu.

## Misc info

You can create as many profiles as you want per app.

This has been tested with Instagram and Snapchat. Open an issue if you find that other apps work or don't work.