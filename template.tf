data "template_file" "demo_template" {
  template = "${file("template.tpl")}"
  vars = {
    username = "${data.vault_generic_secret.demo.data["SAMPLE_API_KEY"]}"
    password = "${data.vault_generic_secret.demo.data["SAMPLE_PASSWORD"]}"
  }
}

resource "local_file" "demo_file" {
  content   = data.template_file.demo_template.rendered
  filename  = "${path.module}/secret.yaml"
}
