# azure-openshift-svt

## https://github.com/openshift/svt/tree/master/application_performance/osperf

>azureuser

mvn test

-------------------------------------------------------
 T E S T S
-------------------------------------------------------
Running TestSuite
07:52:05.987 [main] INFO  c.r.os.svt.osperf.tests.PrePerfTests - Running the pre performance test activities
07:52:05.995 [main] DEBUG c.r.o.s.o.a.PerfTestPlanCreator - In Test Plan Create Method
07:52:05.996 [main] DEBUG c.r.o.s.o.s.c.ConfigYamlParser - Parsing the yaml file: JmeterTestConfig.yaml
07:52:06.003 [main] DEBUG c.r.o.s.o.s.c.ConfigYamlParser - got the input stream
07:52:06.004 [main] DEBUG c.r.o.s.o.s.c.ConfigYamlParser - Returning the reader
07:52:06.252 [main] DEBUG c.r.o.s.o.s.c.ConfigYamlParser - in validate method
07:52:06.258 [main] DEBUG c.r.o.s.o.a.PerfTestPlanCreator - App URL: http://<<app1 url here >>
07:52:06.258 [main] DEBUG c.r.o.s.o.a.PerfTestPlanCreator - The test name: app1
07:52:06.258 [main] DEBUG c.r.o.s.o.a.PerfTestPlanCreator - The appURLContent[2] : <<app1 url here >>
07:52:06.258 [main] DEBUG c.r.o.s.o.a.PerfTestPlanCreator - DomainName: <<app1 url here >> Port:
07:52:06.259 [main] DEBUG c.r.o.s.o.a.PerfTestPlanCreator - The domain name: <<app1 url here >>
07:52:06.259 [main] DEBUG c.r.o.s.o.a.PerfTestPlanCreator - The port:
07:52:06.259 [main] DEBUG c.r.o.s.o.a.PerfTestPlanCreator - The path is:
07:52:06.285 [main] DEBUG c.r.o.s.o.a.PerfTestPlanCreator - Creating test plan: app1-100-1-5-1-500-
07:52:06.349 [main] DEBUG c.r.o.s.o.a.PerfTestPlanCreator - Creating test plan: app1-100-1-5-10-500-
07:52:06.405 [main] DEBUG c.r.o.s.o.a.PerfTestPlanCreator - Creating test plan: app1-100-1-5-100-500-
07:52:06.452 [main] DEBUG c.r.o.s.o.a.PerfTestPlanCreator - Creating test plan: app1-100-1-5-1000-500-
07:52:06.508 [main] DEBUG c.r.o.s.o.a.PerfTestPlanCreator - App URL: http://<<app2 url here >>
07:52:06.508 [main] DEBUG c.r.o.s.o.a.PerfTestPlanCreator - The test name: app2
07:52:06.509 [main] DEBUG c.r.o.s.o.a.PerfTestPlanCreator - The appURLContent[2] : <<app2 url here >>
07:52:06.509 [main] DEBUG c.r.o.s.o.a.PerfTestPlanCreator - DomainName: <<app2 url here >> Port:
07:52:06.509 [main] DEBUG c.r.o.s.o.a.PerfTestPlanCreator - The domain name: <<app2 url here >>
07:52:06.509 [main] DEBUG c.r.o.s.o.a.PerfTestPlanCreator - The port:
07:52:06.509 [main] DEBUG c.r.o.s.o.a.PerfTestPlanCreator - The path is:
07:52:06.510 [main] DEBUG c.r.o.s.o.a.PerfTestPlanCreator - Creating test plan: app2-100-1-5-1-500-
07:52:06.577 [main] DEBUG c.r.o.s.o.a.PerfTestPlanCreator - Creating test plan: app2-100-1-5-10-500-
07:52:06.625 [main] DEBUG c.r.o.s.o.a.PerfTestPlanCreator - Creating test plan: app2-100-1-5-100-500-
07:52:06.657 [main] DEBUG c.r.o.s.o.a.PerfTestPlanCreator - Creating test plan: app2-100-1-5-1000-500-
Tests run: 1, Failures: 0, Errors: 0, Skipped: 0, Time elapsed: 3.614 sec - in TestSuite

Results :

Tests run: 1, Failures: 0, Errors: 0, Skipped: 0

[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------
[INFO] Total time: 36.575s
[INFO] Finished at: Fri Feb 15 07:52:07 UTC 2019
[INFO] Final Memory: 24M/70M
[INFO] ------------------------------------------------------------------------
[azureuser@svtbastionhost osperf]$ ls

## https://github.com/openshift/svt/tree/master/application_performance/osperfscale

mvn test

-------------------------------------------------------
 T E S T S
-------------------------------------------------------
Running TestSuite
07:53:47.767 [main] INFO  c.r.o.s.o.tests.PrePerfTests - Running the pre performance test activities: creating request
07:53:47.776 [main] DEBUG c.r.o.s.o.utils.ConfigYamlParser - Parsing the yaml file: TestConfig.yaml
07:53:47.778 [main] DEBUG c.r.o.s.o.utils.ConfigYamlParser - got the input stream
07:53:47.783 [main] DEBUG c.r.o.s.o.utils.ConfigYamlParser - Returning the reader
07:53:47.948 [main] DEBUG c.r.o.s.o.utils.ConfigYamlParser - in validate method
java.io.FileNotFoundException: results/request.json (No such file or directory)
        at java.io.FileOutputStream.open0(Native Method)

## https://github.com/openshift/svt/tree/master/application_performance/osperf-analyzer

Analyzer parses the data in the input files to prep them for drawing graphs. In the process files are created in the output directory. The following files can be analyzed and graphed: -- rsyslog cpu or memory -- journald cpu or memory -- router total hits -- router hits per sec

Input files have to be of the format CONDITION_<>.csv valid measurables (which is case insensitive) with examples are given below:
WITH_MM_1_500_20_CPU.csv WITHOUT_MM_1_1000_20_MEMORY.csv results-routerperf-total-hits.csv results-routerperf-hits-per-sec.csv

The results directory will have the graphs drawn on the data in the input files.

Steps to run: from osperf-analyser folder run: mvn test

### Test

>azureuser

mvn test

-------------------------------------------------------
 T E S T S
-------------------------------------------------------
Running TestSuite
07:49:38.665 [main] INFO  c.r.os.svt.osperf.tests.PrePerfTests - Running the test create CSV graphs
07:49:38.696 [main] DEBUG c.r.o.s.o.a.s.charts.GraphCreator - No report data and hence skipping drawing the graph for rsyslogd-cpu
07:49:38.696 [main] DEBUG c.r.o.s.o.a.s.charts.GraphCreator - No report data and hence skipping drawing the graph for rsyslogd-memory
07:49:38.697 [main] DEBUG c.r.o.s.o.a.s.charts.GraphCreator - No report data and hence skipping drawing the graph for journald-cpu
07:49:38.697 [main] DEBUG c.r.o.s.o.a.s.charts.GraphCreator - No report data and hence skipping drawing the graph for journald-memory
07:49:38.697 [main] DEBUG c.r.o.s.o.a.s.charts.GraphCreator - No report data and hence skipping drawing the graph for routerperf-total-hits
07:49:38.697 [main] DEBUG c.r.o.s.o.a.s.charts.GraphCreator - No report data and hence skipping drawing the graph for routerperf-hits-per-sec
Tests run: 1, Failures: 0, Errors: 0, Skipped: 0, Time elapsed: 2.451 sec - in TestSuite

Results :

Tests run: 1, Failures: 0, Errors: 0, Skipped: 0

[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------
[INFO] Total time: 22.943s
[INFO] Finished at: Fri Feb 15 07:49:39 UTC 2019
[INFO] Final Memory: 17M/42M
[INFO] ------------------------------------------------------------------------
[azureuser@svtbastionhost osperf-analyzer]$

## https://github.com/openshift/svt/tree/master/openshift_scalability

(cluster-loader)

[azureuser@svtbastionhost openshift-svt]$ cd openshift_scalability/
[azureuser@svtbastionhost openshift_scalability]$

[azureuser@svtbastionhost openshift_scalability]$ KUBECONFIG=kubeconfig  python cluster-loader.py -f pyconfig.yaml
Traceback (most recent call last):
  File "cluster-loader.py", line 81, in <module>
    globalvars["version_info"] = check_oc_version(globalvars)
  File "/home/azureuser/openshift-svt/openshift_scalability/utils.py", line 49, in check_oc_version
    version_string = oc_command("oc version", globalvars)
  File "/home/azureuser/openshift-svt/openshift_scalability/utils.py", line 26, in oc_command
    shutil.copyfile(globalvars["kubeconfig"], tmpfile.name)
  File "/usr/lib64/python2.7/shutil.py", line 82, in copyfile
    with open(src, 'rb') as fsrc:
IOError: [Errno 2] No such file or directory: '/home/azureuser/.kube/config'
[azureuser@svtbastionhost openshift_scalability]$

### Test mit AKS

- Kubernetes Cluster erstellen, Openshiftv4 Service Principal verwenden
- Cloud-Shell: az aks get-credentials --resource-group kubetestrg --name kubetestcluster
- Kopieren der .kube/config-Datei scp .kube/config azureuser@IP:~
- config nach .kube verschieben

OK - geht nicht, da versucht wird ein oc new-project auszuführen

# Ausführung mit Playbook

- zuerst Aufbau des Clusters
- dann Aufbau des Testservers
- 