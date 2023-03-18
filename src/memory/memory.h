// memory.h
#ifndef MEMORY_H
#define MEMORY_H

typedef struct {
    // Add memory state variables and buffers here
} Memory;

void memory_reset(Memory *memory);
bool load_rom(Memory *memory, const char *rom_path);

#endif // MEMORY_H
