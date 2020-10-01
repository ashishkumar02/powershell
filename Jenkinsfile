pipeline 
	{
	agent none
	stages 
		{
			stage('Non-Parallel Stage')
			{
			agent
				{
					label 'master'
				}
			steps
				{
					echo "this stage will be executed first"
				}
			}
			stage('Run tests')
			{
			parallel
				{
				stage('test on Master')
					{
					agent
					{
						label 'master'
					}
					steps
					{
						echo "this TASK1 will be executed on Master"
					}
					}
				stage('test on Windows_agent')
					{
					agent
					{
						label 'windows_agent'
					}
					steps
					{
						echo "this TASK2 will be executed Windows agent"
					}
					}
				}
			}
		}
	post
		{
			always
			{
				echo "this will always run"
			}
			success
			{
				echo "this will run only if succesfull"
			}
			failure
			{
				echo "this will run only if failed"
			}
			unstable
			{
				echo "this will run only if the run was marked as unstable"
			}
			changed
			{
				echo "this will run only if the state of pipeline is changed"
				echo " for example when the state changed from failed to success"
			}
		}
	}	
