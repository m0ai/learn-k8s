# learn-k8s

## k8s CheatSheet 

파드 변경 이벤트 모니터링

> k get pods -w -l {YOUR_LABEL}



스테이트풀셋 롤링 업데이트 상황 보기 

> k  rollout status sts/{STS_NAME}



배포된 파드 이미지 버전 확인

>  kubectl get po {PODNAME} --template '{{range $i, $c := .spec.containers}}{{$c.image}}{{end}



delete으로 여러 타입의 리소스 한번에 지우기 (라벨을 잘 설정해야하는 이유)

>  kubectl delete pods,services -l name={MY_LABEL}

