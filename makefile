CENTC := centc

BUILD := build
RELEASE := $(BUILD)/release
DEBUG := $(BUILD)/debug

LIBS := -lwebkitgtk-6.0 -lgtk-4 -lgobject-2.0 -lglib-2.0 -lgio-2.0
RELEASE_FLAGS := --release -O
DEBUG_FLAGS :=

$(RELEASE)/belt: $(RELEASE)
	$(CENTC) -o $@ src/main.cn $(RELEASE_FLAGS) -- $(LIBS)

$(DEBUG)/belt: $(DEBUG)
	$(CENTC) -o $@ src/main.cn $(DEBUG_FLAGS) -- $(LIBS)

release: $(RELEASE)/belt
debug: $(DEBUG)/belt

$(DEBUG) $(RELEASE):
	mkdir -p $@

all: release

clean:
	rm -rf $(BUILD)

.PHONY: release debug all clean
