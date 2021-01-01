# learn-k8s

## CheatSheet 

파드 변경 이벤트 모니터링

> k get pods -w -l {YOUR_LABEL}



스테이트풀셋 롤링 업데이트 상황 보기 

> k  rollout status sts/{STS_NAME}



배포된 파드 이미지 버전 확인

>  kubectl get po {PODNAME} --template '{{range $i, $c := .spec.containers}}{{$c.image}}{{end}



delete으로 여러 타입의 리소스 한번에 지우기 (라벨을 잘 설정해야하는 이유)

>  kubectl delete pods,services -l name={MY_LABEL}



## Tool

## kubens

- https://github.com/ahmetb/kubectx

- **`kubens`**  한 클러스터 내에서 네임스페이스를 간편하게 변경할 수 있는 Cli 

- zsh/fish/bash 에 한하여 auto-completion 이 지원됌
- 아래는 지원되는 기능

```
USAGE:
  kubens                    : list the namespaces in the current context
  kubens <NAME>             : change the active namespace of current context
  kubens -                  : switch to the previous namespace in this context
  kubens -c, --current      : show the current namespace
  kubens -h,--help          : show this message
```



## Warning Sheet

>  **경고:** 로컬 클러스터에서 기본 스토리지클래스는 `hostPath` 프로비저너를 사용한다. `hostPath`는 개발과 테스트 목적에만 적합하다. `hostPath` 볼륨인 경우 데이터는 스케쥴링된 파드의 노드에 `/tmp` 살아있고 노드 간에 이동하지 않는다. 파드가 죽어서 클러스터 내에 다른 노드로 스케줄링되거나 해당 노드가 재부팅되면 그 데이터는 잃어버린다.



## Tooltip Sheet

> **참고:** `hostPath` 프로비저너를 사용해야 하는 클러스터를 기동하는 경우라면 `--enable-hostpath-provisioner` 플래그를 `controller-manager` 컴포넌트에 꼭 설정해야 한다.

