extern int asm_main() __attribute__((cdecl));

int main()
{
    int ret_status;
    ret_status = asm_main();

    return ret_status;
}
