// pipeline {
//     agent { node { label 'my-node' } }
//     stages {
//         stage("Verifiying tools") {
//             steps {
//                 // echo 'Etape un'
//                   sh label: '', script: '''
//                     docker version
//                     docker info
//                     docker compose version
//                     curl --version
//                     jq --version
//                 '''
//             }
//         }
//         stage("Prune Docker Data") {
//             steps {
//                 // sh 'docker system prune -a --volumes -f'
//                 echo 'Etape deux'
//             }
//         }
//         stage("Start Container") {
//             steps {
//                  echo 'Etape Trois jj'
//                 // sh 'docker compose up -d --no-color --wait'
//                 // sh 'docker compose ps'
//             }
//         }


//     }
//     // post{
//     //     always{
//     //         sh 'docker compose down --remove-orphans -v'
//     //         sh 'docker compose ps'
//     //     }
//     // }
// }
pipeline {
  agent any

  stages {
    stage('Build') {
      steps {
        script {
          docker.build('my-image:latest', '-f Dockerfile .')
        }
      }
    }
    stage('Run') {
      steps {
        script {
          docker.image('my-image:latest').withRun('-p 8080:80') {
            echo 'Container running...'
          }
        }
      }
    }
  }
}