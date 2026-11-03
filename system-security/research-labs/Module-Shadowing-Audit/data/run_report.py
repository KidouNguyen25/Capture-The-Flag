"""Entry point for the local module-shadowing audit lab."""

from reporting import build_report


def main() -> None:
    scores = [72, 84, 91, 88]
    print(build_report(scores))


if __name__ == "__main__":
    main()
