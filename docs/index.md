![Prism Logo](https://github.com/prismios/Prism/blob/main/Assets/logo_small_transparent.png?raw=true)

# Prism Documentation

Welcome to the official documentation for **Prism** — your ultimate iPhone customization tool. Prism brings powerful tweaks and visual enhancements to your iDevice(iOS 17+) without the need for jailbreaking.

---

## 📌 Table of Contents

- [Introduction](#introduction)
- [Pros & Cons](#pros/cons)
  - [Pros](#pros)
  - [Cons](#cons)
- [Functionality](#functionality)
- [Tweaks](#tweaks)
- [Installation](#installation)
- [Configuration](#configuration)
- [FAQ](#faq)
- [License](#license)

---

## 🚀 Introduction

**Prism** acts as a powerful, jailed alternative to traditional jailbreaks, offering customizable icons, UI tweaks, Lockscreen themes, and enhancements using sandboxed capabilities. Easily personalize and tune your iPhone without compromising security or version.

---

## ⚙️ Pros/Cons

### Pros
- **No Jailbreak Required**: Enjoy tweaks without voiding your warranty.
- **Native Feel**: Seamless integration with iOS.
- **Safe and Secure**: Maintains Apple’s security mechanisms, and has a negligible (likely 0%) chance of bootloops, spinlocks, etc.
- **Any Modern Version**: Prism will never be properly patched, as it adheres to Apple's rules.

### Cons
- **Limited System Access**: Some tweaks are restricted by iOS policies.
- **Performance**: Prism requires a shortcut to be run at all times, possibly draining the battery (Still less than a modern jailbreak, though).
- **App Store Restrictions**: Prism cannot modify existing apps or inject tweaks.
- **Jank**: Since Prism uses clever, never-before-seen methods for its tweaks, they may be prone to slight bugs, graphic errors, and/or unfixable negative elements.

---

## ⚙️ Functionality

Prism is largely powered by a unification between Apple's **native Swift APIs** and **Shortcut APIs/Actions**, which give us access to certain "private" APIs via XPC. Prism can communicate between itself(app and shortcut) via app groups and the local documents folder. **Prism requires the helper shortcut to be ran at all times**, but don't worry. It's quite seamlessly integrated with the system and has minimal battery impact; you wont even know it's there! Contrary to jailbreaks and exploits, as iOS gets updated, **we can only expect Prism to become more powerful**, as Apple continues to add unique actions to shortcuts and potentially useful APIs to their Swift toolkit.

## 🤝 Tweaks

Prism utilizes a **repository system**, similar to popular jailbroken repository managers. Its capabilities are rapidly expanding, leveraging Swift and Shortcuts APIs to provide near-jailbreak customization. Here's a breakdown of just a handful the available tweak categories and how they work:

### **Icon Themes**
- **Description**: Customize your app icons to achieve a near-jailbreak level of personalization. Import custom themes or explore a vast library of first- and third-party themes.
- **Features**:
  - Support for animated icons
  - Dynamic icon effects
  - Icon packs with one-tap apply
- **How It Works**: Prism uses an iOS 17+ interactive widget to apply themes. It adapts to your wallpaper, creating a native feel. Pressing an icon triggers a helper shortcut that opens the corresponding app, ensuring seamless integration.

### **Icon Layout Tweaks**
- **Description**: Adjust your icon grid layout, spacing, and size for a cleaner or more customized aesthetic.
- **Features**:
  - Customize icon size and spacing
  - Adjust margins and padding
  - Save and apply multiple layouts
- **How It Works**: Layout tweaks are applied via widgets that update in real time. Prism’s tweak JSON files allow manual adjustments for advanced users.

### **HTML Widgets (HS+LS)**
- **Description**: Add interactive or dynamic HTML, CSS, and JavaScript widgets to your homescreen or lockscreen.
- **Features**:
  - Display live data (e.g., weather, time)
  - Create interactive animations
  - Customize with CSS styles
- **How It Works**: Prism uses WebKit views in widgets to render HTML content. Widgets can be pinned to the homescreen or layered over wallpapers. For lockscreens, they can be displayed using guided access or overlaid as static content.

### **Lockscreen Themes**
- **Description**: Redesign your lockscreen with dynamic visuals and custom elements.
- **Method 1 (Recommended)**:
  - **How It Works**: Prism replicates the PosterBoard app (Lockscreen view) using a free filesystem. With **Guided Access** enabled, it locks your phone to Prism’s lockscreen app, replicating Face ID authentication.
  - **Pros**: Extensive customization, including animations and custom fonts.
  - **Cons**: Limited notification support and no Raise-to-Wake.
- **Method 2 (Alternative)**:
  - **How It Works**: Uses a custom wallpaper overlay to mask elements like the clock, providing a minimal theme.
  - **Pros**: Native notifications and Raise-to-Wake support.
  - **Cons**: No interactivity, and updates are limited to once per minute.

### **Custom Sounds**
- **Description**: Replace system sounds with custom audio effects for specific events.
- **Features**:
  - Unlock sounds
  - Notification sounds
  - Custom charging sounds
- **How It Works**: Prism uses shortcuts to trigger audio files stored within the app.

### **Dock Tweaks**
- **Description**: Modify your iPhone’s dock for both aesthetic and functional changes.
- **Features**:
  - Transparent docks
  - Custom dock overlays
  - Animated dock effects
- **How It Works**: Visual overlays are applied using shortcuts. Prism offers a specialized "DockPlayer" tweak that integrates multimedia functionality.

### **Button Rebinds**
- **Description**: Remap hardware buttons to perform custom actions.
- **Features**:
  - Launch specific apps with button combinations
  - Perform system functions
  - Trigger shortcuts instantly
- **How It Works**: Using accessibility APIs and event checks, Prism intercepts button inputs and reroutes them to your desired actions. Button rebinding is fully reversible and safe.

Each tweak in Prism is designed to offer maximum personalization without compromising your device’s security. With ongoing updates and community contributions, the possibilities are constantly growing. Explore the tweak library and unlock your iPhone’s full potential with Prism!

---

## 📥 Installation

Follow these steps to install Prism:

1. Download Prism from the App Store.
2. Follow the on-screen instructions within the app's onboarding process.
3. Grant necessary permissions and install the necessary shortcut.
4. Enjoy customizing your device! Further instructions are within the app.

> **Note:** Prism is compatible with iOS 17.0 and later.

---

## 🛠 Configuration

You can customize Prism’s behavior using the in-app settings. Example configuration file:

```json
{
  "theme": "dark",
  "widgetOpacity": 0.8,
  "gestureControl": true
}
```

---

## ❓ FAQ

**Q: Is Prism safe to use?**
> Yes! Prism uses Apple-approved APIs, ensuring no security vulnerabilities.

**Q: Can I install third-party tweaks?**
> Prism supports community-made tweaks, reviewed for safety.

**Q: Does Prism affect battery life?**
> Minimal impact. Performance is optimized using native resources.

---

## 📝 License

Prism is licensed under the [MIT License](LICENSE).

For more information, visit the [GitHub repository](https://github.com/prism-project).

