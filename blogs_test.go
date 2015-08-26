package main

import "testing"

func TestJsonTransformer(t *testing.T) {
	cases := []struct {
		in, want string
	}{
		{`{"title":"Leap of faith"}`, `{"Headline":"Leap of faith"}`},
	}
	for _, c := range cases {
		got := jsonTransformer(c.in)
		if got != c.want {
			t.Errorf("In(%q), Got %q, want %q", c.in, got, c.want)
		}
	}
}
