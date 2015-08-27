package main

import (
	"github.com/astaxie/beego"
)

type MainController struct {
	beego.Controller
}

func (this *MainController) Get() {
	this.Ctx.WriteString(JSON{Mike}.Contents)
}

func main() {
	beego.Router("/", &MainController{})
	beego.Run()
}

//LegacyBlog old content from drupal
//JSON represents a json string
type JSON struct {
	Contents string
}
