package acronym

import "strings"

func Abbreviate(s string) string {
	result := ""
	splited := strings.Split(strings.Replace(s, "-", " ", 1), " ")
	for _, item := range splited {
		result += item[0:1]
	}
	return strings.ToUpper(result)
}
