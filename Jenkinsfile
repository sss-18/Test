pipeline{
	agent any
	
	stages {
		stage ('Compile Stage') {
			steps {
				withMaven(maven :'3.6.3') {
					sh 'mvn clean compile'
				}
			}
		}
		
		stage ('testing Stage') {
		
			steps {
				withMaven(maven : '3.6.3'){
					sh 'mvn test'
				}
			}
		}
		
		stage ('Deployment Stage') {
			steps {
				withMaven(maven : '3.6.3'){
					sh 'mvn deploy'
				}
			}
		}
	}
} 
		
