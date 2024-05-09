## Доступ до ArgoCD

1. Відкрийте доступ до сервісу через порт-форвард, виконавши команду: 
`kubectl port-forward -n demo svc/ambassador 8088:80`

2. Відкрийте інтерфейс ArgoCD за посиланням https://localhost:8080 (Прийміть ризики)

3. Для входу до інтерфейсу користувача використовуйте ім'я користувача за замовчуванням `admin`. Щоб отримати пароль від k8s secret, виконайте наступну команду:
`kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d; echo`

4. Ось невелика демонстрація навігації в ArgoCD.
![argocd_demo](../blob/gifs/ArgoCD.gif)