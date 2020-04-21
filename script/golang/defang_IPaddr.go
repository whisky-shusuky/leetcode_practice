import (
    "fmt"
    "strings"
)

func defangIPaddr(address string) string {
    fmt.Printf(address)
    return strings.Replace(address, ".", "[.]", -1)
}
