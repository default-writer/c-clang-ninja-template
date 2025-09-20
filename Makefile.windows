CC      = cl
CFLAGS  = /W4 /Zi
LDFLAGS =

TARGET = main.exe
SOURCES = *.c
OBJECTS = $(SOURCES:.c=.obj)
PDB     = vc*.pdb # Wildcard for PDB files

.PHONY: all
all: clean $(TARGET)

.PHONY: clean
clean:
	@for %t in ($(TARGET), $(OBJECTS), $(PDB)) do @(if exist %%t @(del /F /S /Q %%t))

$(TARGET): $(OBJECTS)
	link $(LDFLAGS) /OUT:$@ $**

# Inference rule for .c to .obj files
%.obj: %.c
	$(CC) $(CFLAGS) /c /Fo$@ $<
