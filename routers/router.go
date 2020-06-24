package routers

import (
	"aibitik/controllers"
	"github.com/astaxie/beego"
)

func init() {
	beego.Router("/", &controllers.MainController{})
	beego.Router("/json", &controllers.MainController{}, "get:Json")
	beego.Router("/test", &controllers.MainController{}, "get:Test")
}
