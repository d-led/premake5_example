extern "C" {
    __declspec(dllexport) int my_add(int a, int b) {
        return a + b;
    }

    __declspec(dllexport) int my_version() {
        return MY_VERSION;
    }
}
