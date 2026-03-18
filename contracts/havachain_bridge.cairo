%lang starknet

// HavaChain Bridge Contract
// Handles basic state synchronization between HavaChain core and Starknet

@storage_var
func stored_value() -> (res: felt) {
}

@storage_var
func last_updater() -> (res: felt) {
}

@external
func set_value{
    syscall_ptr: felt*, pedersen_ptr: HashBuiltin*, range_check_ptr
}(
    value: felt
) {
    let (caller) = get_caller_address();

    stored_value.write(value);
    last_updater.write(caller);

    return ();
}

@view
func get_value{
    syscall_ptr: felt*, pedersen_ptr: HashBuiltin*, range_check_ptr
}() -> (res: felt) {
    let (value) = stored_value.read();
    return (value,);
}

@view
func get_last_updater{
    syscall_ptr: felt*, pedersen_ptr: HashBuiltin*, range_check_ptr
}() -> (res: felt) {
    let (addr) = last_updater.read();
    return (addr,);
}
