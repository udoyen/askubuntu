OUTPUT=$(/usr/bin/company_program --init.d `/usr/bin/lua -l company_exec -e 'dofile("/etc/company_profiles"); print(table.concat(company_exec.table_to_companyexec_argv(default), " "))'`)
export $OUTPUT
