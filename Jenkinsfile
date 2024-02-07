pipeline {
 agent { node { label 'my-node' } }
environment {
        TEST_PREFIX = "test-IMAGE"
        TEST_IMAGE = "${env.TEST_PREFIX}:${env.BUILD_NUMBER}"
        TEST_CONTAINER = "${env.TEST_PREFIX}-${env.BUILD_NUMBER}"
        REGISTRY_ADDRESS = "my.registry.address.com"

        SLACK_CHANNEL = "#deployment-notifications"
        SLACK_TEAM_DOMAIN = "MY-SLACK-TEAM"
        SLACK_TOKEN = credentials("slack_token")
        DEPLOY_URL = "https://deployment.example.com/"

        COMPOSE_FILE = "docker-compose.yml"
        REGISTRY_AUTH = credentials("docker-registry")
        STACK_PREFIX = "my-project-stack-name"
      }
     stages {
        stage("Verifiying tools") {
            steps {
                // echo 'Etape un'
                sh '''
                    cd env-ci/
                    docker version
                    docker info
                    docker compose version
                    curl --version
                    jq --version
                '''
            }
        }
        stage("Prune Docker Data") {
            steps {
                // sh 'docker system prune -a --volumes -f'
                echo 'Etape deux'
            }
        }
        stage("Start Container") {
            steps {
                 echo 'Etape Trois'

                // sh 'docker compose up -d --no-color --wait'
                // sh 'docker compose ps'
            }
        }


    }
    // post{
    //     always{
    //         sh 'docker compose down --remove-orphans -v'
    //         sh 'docker compose ps'
    //     }
    // }
}