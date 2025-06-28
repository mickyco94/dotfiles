function last_n_chars
    # Usage: cat file.txt | last_n_chars N
    set -l n $argv[1]

    if test -z "$n"
        echo "Usage: cat file.txt | last_n_chars N"
        return 1
    end

    awk -v n="$n" '{ print substr($0, length($0) - n + 1) }'
end
