# 💩 shit slices

A shittier, bash version of slices for iOS 11

## Usage

This is terminal based, so you'll need to ssh to your phone to run commands, or use NewTerm 2 on Cydia.

### Create a new profile

To create a new slice, open a terminal window and type

```
slices "Snapchat" create new-profile
```

In the above example:

`Snapchat` is the name of the app as shown under the app's icon (case sensitive)
`create` is to make a new profile
`new-profile` is the name I chose for the new profile

Once this command is run, the script will create 2 profiles, one named `new-profile` and the other named `original`. The `original` profile name can't be changed, as it's a system profile. 

### Switch profiles

Continuing from the above example, the current active profile is `new-profile`. You can now open Snapchat, log out, and log in to a new account. To apply the original profile, type:

```
slices "Snapchat" apply original
```

To switch back to the other profile, type

```
slices "Snapchat" apply new-profile
```

### Delete all profile data

```
slices reset
```

## Activator

Since there's no UI, and it's a pain in the ass to enter these commands by hand, we can use Activator to setup easy app switching.

Go to activator settings, choose `Anywhere` < `Build` < `Icon Flick Up`, then choose Snapchat.

Then `Anywhere` < `Snapchat Icon Flick Up` < `Build` < `Run Command`

Then enter the command `slices "Snapchat" apply original`

Repeat the same process above, but do it for `Icon Flick Down`, and set the command to apply `new-profile`

Now swipe up on the snapchat icon, and wait a few seconds and Snapchat will open using the original profile.

Now swipe down on the snapchat icon, and wait a few seconds and Snapchat will open using new-profile.

Of course, the options are many here, and you don't have to use icon flick. You could also make a menu in activator with each profile as an option in the menu.

Because this script only moves the contents of the application data around, it shouldn't be detectable.

## Misc info

You can create as many profiles as you want per app.

Profile names should not contain spaces.

This has been tested with the following apps:

 - Instagram  
 - Snapchat

Open an issue if you find that other apps work or don't work.

## Dependencies

Activator - https://rpetri.ch/repo/ https://github.com/rpetrich

PlUtil - http://repo.bingner.com http://github.com/sbingner

