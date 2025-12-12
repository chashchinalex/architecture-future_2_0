# Каталог Доменных Событий

| Событие | Контекст-источник | Семантика и Триггеры | Payload (Контракт) |
|:---|:---|:---|:---|
| **PatientRegistered** | Medical | Новый пациент прошел полную процедуру регистрации. Триггерит создание кошелька в Финтехе. | `patient_id`, `created_at`, `segment` |
| **MedicalImageUploaded** | Medical | Врач загрузил снимок. Триггерит запуск анализа в ИИ. | `image_url` (s3), `modality`, `visit_id` |
| **AIAnalysisCompleted** | AI | Модель завершила обработку. Содержит предсказание. | `job_id`, `risk_score`, `suggested_icd` |
| **DiagnosisConfirmed** | Medical | Врач поставил финальный диагноз. **Главный триггер для оплаты.** | `visit_id`, `icd_code`, `services_list` |
| **InvoiceIssued** | Fintech | Счет сформирован и ожидает оплаты. | `invoice_id`, `amount`, `due_date` |
| **PaymentSucceeded** | Fintech | Деньги успешно списаны. Разблокирует выдачу заключения пациенту. | `invoice_id`, `transaction_id`, `timestamp` |