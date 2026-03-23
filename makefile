CENTC := centc
BUILD := build

LIBS := -lwebkitgtk-6.0 -lgtk-4 -lgobject-2.0 -lglib-2.0 -l gio-2.0

$(BUILD)/cent-browser: $(BUILD)
	$(CENTC) -o $@ src/main.cn -- $(LIBS)

$(BUILD):
	mkdir -p $@

all: $(BUILD)/cent-browser

clean:
	rm -rf $(BUILD)

.PHONY: all clean
