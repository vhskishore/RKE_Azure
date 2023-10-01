resource "tls_private_key" "RKEkey" {
  algorithm = "RSA"
  rsa_bits = 4096
}

resource "local_file" "RKEPKEY" {
  filename = "rkeprikey.pem"
  content = tls_private_key.RKEkey.private_key_pem
}