
node{
    properties([buildDiscarder(logRotator(artifactDaysToKeepStr: '', artifactNumToKeepStr: '5', daysToKeepStr: '', numToKeepStr: '5')), [$class: 'JobLocalConfiguration', changeReasonComment: ''], pipelineTriggers([pollSCM('* * * * *')])])
echo "job name is: ${env.JOB_NAME}"
echo "build nunber is: ${env.BUILD_NUMBER}"
echo "jenkin home is: ${env.JENKINS_HOME}"
def mavenhome= tool name: 'maven3.9.8'
stage('codecalling'){
git branch: 'development', credentialsId: '2958ed50-937d-463e-8cfc-d8344e00342e', url: 'https://github.com/anu-may2024-projects/maven-web-application.git'
}
stage('build'){
sh "${mavenhome}/bin/mvn clean package"
}
  /*
stage('sonarqube report'){
   sh "${mavenhome}/bin/mvn clean sonar:sonar"
}
stage('nexus artificate'){
   sh "${mavenhome}/bin/mvn clean deploy" 
}
stage('deploy into tomcat'){
 sshagent(['2b9ffa1b-fea8-43bb-9065-456ea4cb8f5f']) {
sh "scp -o StrictHostKeyChecking=no target/maven-web-application.war ec2-user@172.31.21.33:/opt/apache-tomcat-9.0.89/webapps"

}

}
*/
}
