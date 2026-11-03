"""Workspace-local statistics helper used by the lab sample."""

from pathlib import Path


# A harmless marker records that this module was imported.
Path(".lab_marker").write_text("workspace module loaded\n", encoding="utf-8")


def mean(values: list[int]) -> float:
    if not values:
        raise ValueError("mean requires at least one value")
    return sum(values) / len(values)
