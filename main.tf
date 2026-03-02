resource "aws_instance" "web" {
  ami           = "ami-0f5ee92e2d63afc18"
  instance_type = var.instance_type

  tags = {
    Name = "Terraform-Web-Server"
  }

  user_data = <<-EOF
              #!/bin/bash
              yum update -y
              yum install nginx -y
              systemctl start nginx
              systemctl enable nginx
              echo "<h1>Deployed via Terraform 🚀</h1>" > /usr/share/nginx/html/index.html
              EOF
}
