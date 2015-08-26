package main

import (
	"encoding/json"
)

type LegacyBlog struct {
	Title string
}

//Blog shiny new content from our mock service
type Blog struct {
	Headline string
}

func jsonTransformer(in string) string {
	var legacyBlog LegacyBlog
	err := json.Unmarshal([]byte(in), &legacyBlog)
	if err != nil {
		panic(err)
	}

	blog := Blog{legacyBlog.Title}
	transformedBlog, err := json.Marshal(&blog)
	if err != nil {
		panic(err)
	}
	return string(transformedBlog)
}
