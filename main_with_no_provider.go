package main

import (
	"fmt"
	"terraform-provider-passwordsafe/api/client"
	"terraform-provider-passwordsafe/config"
)

func main_test() {
	apiKey := config.PS_API_KEY
	apiAccountName := config.PS_ACCOUNT_NAME
	url := config.PS_URL
	clientCertificatePath := config.CERTIFICATE_PATH
	clientCertificateName := config.CERTIFICATE_NAME
	clientCertificatePassword := config.CERTIFICATE_PASSWORD
	apiClient, _ := client.NewClient(url, apiKey, apiAccountName, false, clientCertificatePath, clientCertificateName, clientCertificatePassword)

	secret, err := apiClient.SecretFlow("felipe_test_group\\sub1\\sub2", "Testfile1", "\\")

	if err != nil {
		fmt.Printf("Error in SecretFlow: %v", err.Error())
	}

	fmt.Println(secret)

	secret, err = apiClient.SecretFlow("felipe_test_group*sub1*sub2", "Testfile1", "*")

	if err != nil {
		fmt.Printf("Error in SecretFlow: %v", err.Error())
	}

	fmt.Println(secret)

	secret, err = apiClient.ManageAccountFlow("Computer01", "User04")

	if err != nil {
		fmt.Printf("Error in SecretFlow: %v", err.Error())

	}

	fmt.Println(secret)

}