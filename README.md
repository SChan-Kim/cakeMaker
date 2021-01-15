# cakeMaker

2020 Fall Operating System Project
-------------------
<git 명령어 모음>

git checkout <브랜치이름> -> 브랜치 옮기기(이미 있는 브랜치)

git checkout -b <브랜치이름> -> 브랜치 옮기기(없는 브랜치를 만들어 옮김)

git push --set-upstream origin <브랜치이름> -> 새로 만든 브랜치에서 작업한 것을 push할 경우(브랜치를 새로만들었다고 알려줄 필요가 있다)

- 보통 작업 루틴 -
  - git pull -> develop에서
  - git checkout -b <브랜치이름> -> 꼭 develop에서 파야한다
  - '''
  - (열심히 코드작업)
  - '''
  - git add --all -> 모든 변경사항을 stage 상태에 올린다
  - git commit -m "커밋 메세지" -> 커밋 메세지는 컨벤션을 따라서 작성해야 한다! (이전에 보내준 사진)
  - git push --set-upstream origin <브랜치이름> -> 만약 이전에 push한 branch에서 작업했다면 그냥 git push
- 그 외 유용하지만 권장되지 않는 git
  - git pull --rebase origin <브랜치 네임> -> 현재 브랜치의 베이스 브랜치를 바꾸는 명령 
  - git commit --amend -> 변경 사항을 이전 커밋에 합쳐서 커밋(둘 이상 동시 작업중일때는 절대사용금지)
  - git push -f -> 강제 푸쉬(위 commit --amend를 사용한 후에는 이렇게 push해야 하는데 둘 이상 동시 작업중일 때는 절대 사용금지)

