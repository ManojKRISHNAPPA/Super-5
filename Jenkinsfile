pipeline{
    agent any

    environment{
        IMAGE_NAME = "manojkrishnappa/chatbot:${GIT_COMMIT}"
    }

    stages{
        stage('git-checkout'){
            steps{
                git url: 'https://github.com/ManojKRISHNAPPA/Super-5.git', branch: 'app-1'
            }
        }

        stage('Build-stage'){
            steps{
                sh'''
                    printenv
                    docker build -t ${IMAGE_NAME} .
                '''
            }
        }

        stage('Testing-stage'){
            steps{
                sh'''
                    docker stop chatbot
                    docker rm chatbot
                    docker run -it -d --name chatbot -p 8501:8501 ${IMAGE_NAME}
                '''
            }
        
        }
    }
}