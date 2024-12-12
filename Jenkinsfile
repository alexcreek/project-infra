pipeline {
  agent {
    docker {
      image 'hashicorp/terraform:1.10.2'
      args '--entrypoint='
    }
  }
  options {
    ansiColor('xterm')
  }
   environment {
    AWS_ACCESS_KEY_ID = credentials('aws_api_key_id')
    AWS_SECRET_ACCESS_KEY = credentials('aws_api_key')
    DIGITALOCEAN_TOKEN = credentials('do_api_key')
  }
  stages {
    stage('Plan') {
      when { not { branch 'main' } }
      steps {
        dir('terraform') {
          sh '''
              terraform init
              terraform plan
          '''
        }
      }
    }
    stage('Apply') {
      when { branch 'main' }
      steps {
        dir('terraform') {
          sh '''
              terraform init
              terraform apply --auto-approve
          '''
        }
      }
    }
  }
  post {
    always {
      cleanWs()
    }
  }
}
