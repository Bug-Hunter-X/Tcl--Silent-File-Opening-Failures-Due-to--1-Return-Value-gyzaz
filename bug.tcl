proc get_data {filepath} {
    set fileId [open $filepath r]
    if {$fileId == -1} {
        return -1
    }
    set data [read $fileId]
    close $fileId
    return $data
}

set filepath "my_file.txt"
set data [get_data $filepath]
if {$data == -1} {
    puts "Error opening file"
} else {
    puts "File content: $data"
}

#In this code, if the file doesn't exist, the open command returns -1. However, this -1 is interpreted as a valid return value by the calling procedure, which can lead to unexpected behavior in cases where the return value is not checked properly. This issue is not immediately obvious and can easily slip past the developer.

