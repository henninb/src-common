program file_read;
    var ifp : file;
    var ch : char;
    var read_count : integer;
begin
    if paramcount <> 1 then
    begin
         writeln('Usage: ', paramstr(0), ' <first_arg>');
         halt(1)
    end;

    assign(ifp, paramstr(1));
    reset(ifp, 1);

    repeat
        blockread(ifp, ch, 1, read_count);
        write(ch);
    until(read_count = 0);

    close(ifp);
end.
