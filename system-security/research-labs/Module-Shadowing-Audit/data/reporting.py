"""Small report helper used by the lab."""

from statistics import mean


def build_report(scores: list[int]) -> str:
    return f"Average score: {mean(scores):.2f}"
