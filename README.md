# YAGE (Yet Another Gameboy Emulator)

YAGE is a Game Boy emulator written in C, designed to run on both desktop and embedded systems.

## Prerequisites

- C compiler (e.g., GCC)
- [Criterion](https://criterion.readthedocs.io/en/latest/) (optional, for running tests)

## Building

To build the emulator, run:

```
make
```

This will create an `emulator` binary in the project root.

## Running

To run the emulator, use:

```
./emulator <path_to_rom_file>
```


Replace `<path_to_rom_file>` with the path to a Game Boy ROM file.

## Testing

To run tests, first, install the [Criterion](https://criterion.readthedocs.io/en/latest/) testing framework. Then, build and run the tests using:

```
make test
```

## License

This project is licensed under the [MIT License](https://opensource.org/licenses/MIT).
