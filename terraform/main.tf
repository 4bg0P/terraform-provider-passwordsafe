terraform {
  required_providers {
    passwordsafe = {
      source = "providers/beyondtrust/passwordsafe"
      version = "1.0.0"
    }
  }
}

provider "passwordsafe" {
  api_key = "${var.api_key}"
  url = "${var.url}"
  api_account_name = "${var.api_account_name}"
  verify_ca = false
  client_certificates_folder_path = "${var.client_certificates_folder_path}"
  client_certificate_name = "${var.client_certificate_name}"
  client_certificate_password = "${var.client_certificate_password}"

}

data "passwordsafe_secret" "secret_text" {
  path = "felipe_test_group*sub1*sub2*sub3"
  title = "text_in_sub_3"
  separator = "*"
}

output "secret_text" {
  value = "${data.passwordsafe_secret.secret_text.value}"
}

data "passwordsafe_secret" "secret_credential" {
  path = "felipe_test_group/sub1/sub2/sub3"
  title = "credential_in_sub_3"
}

output "secret_credential" {
  value = "${data.passwordsafe_secret.secret_credential.value}"
}

data "passwordsafe_secret" "secret_file" {
  path = "felipe_test_group/sub1/sub2/sub3"
  title = "file_in_sub3"
}

output "secret_file" {
  value = "${data.passwordsafe_secret.secret_file.value}"
}

data "passwordsafe_managed_account" "manage_account" {
  system_name = "Computer01"
  account_name = "User03"
}

output "manage_account" {
  value = "${data.passwordsafe_managed_account.manage_account.value}"
}


