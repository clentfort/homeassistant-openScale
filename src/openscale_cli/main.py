import asyncio

from bleak import BleakScanner


async def main():
    """Scan for Bluetooth devices."""
    print("Scanning for Bluetooth devices...")
    devices = await BleakScanner.discover()
    for device in devices:
        print(device)


if __name__ == "__main__":
    asyncio.run(main())
