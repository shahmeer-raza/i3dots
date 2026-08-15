# Mirrorlist Configuration

This folder contains a location-specific Pacman mirrorlist configured for Karachi, Pakistan.

---

## What is a Mirrorlist?

A mirrorlist is a file that tells Pacman (Arch package manager) which servers to download packages from. Using geographically closer mirrors improves download speed.

---

## Backup Original Mirrorlist

Before using this mirrorlist, always backup your original:

```bash
sudo cp /etc/pacman.d/mirrorlist /etc/pacman.d/mirrorlist.bak
```

This creates a backup file `mirrorlist.bak` that you can restore if needed.

---

## Installation

Copy this mirrorlist to your system:

```bash
sudo cp mirrorlist /etc/pacman.d/mirrorlist
```

---

## Testing Mirrors

After installation, update your package database:

```bash
sudo pacman -Syy
```

This will test the mirrors. If they work, you will see package lists downloading.

---

## If Mirrors Don't Work

If the mirrors are slow or not working, restore your backup:

```bash
sudo cp /etc/pacman.d/mirrorlist.bak /etc/pacman.d/mirrorlist
```

Then update again:

```bash
sudo pacman -Syy
```

---

## Generate New Mirrorlist

If you want to generate a fresh mirrorlist optimized for your location:

```bash
sudo pacman -S pacman-contrib
```

Then use the ranking tool:

```bash
sudo rankmirrors -n 6 /etc/pacman.d/mirrorlist.bak > /tmp/mirrorlist.new
sudo cp /tmp/mirrorlist.new /etc/pacman.d/mirrorlist
```

---

## Note

Mirror availability and speed vary. This mirrorlist is optimized for Karachi, Pakistan but may not always be the fastest or most reliable. Test and adjust as needed for your specific connection.
