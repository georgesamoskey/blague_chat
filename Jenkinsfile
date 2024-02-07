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
    stage("Verification des outils ") {
      steps {
        bat 'docker version'
        bat 'docker info'
        bat 'docker compose version'
        bat 'curl --version'
            }
        }
    stage("Creations des volumes ") {
     steps {
            bat 'docker system prune -a --volumes -f'
        }
    }
    stage(" Demarrage de container ") {
     steps {
             bat 'docker compose up -d  -p 9009:9009 --no-color --wait'
             bat 'docker compose ps'
        }
    }

    stage("Verification de reponse ") {
     steps {
            bat 'curl http://localhost:9009'
      }
   }

  }
 post{
      always{
            bat 'docker compose down --remove-orphans -v'
            bat 'docker compose ps'
        }
    }
}