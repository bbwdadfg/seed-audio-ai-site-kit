#!/usr/bin/env python3

import pathlib
import webbrowser


def main():
    index = pathlib.Path("/app/share/seed-audio-ai-pwa-toolkit/index.html")
    if index.exists():
        webbrowser.open(index.as_uri())
    else:
        webbrowser.open("https://seedaud.io/")


if __name__ == "__main__":
    main()
