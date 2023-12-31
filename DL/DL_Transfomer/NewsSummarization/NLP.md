> ## 자연어 처리?
> 자연어 처리(Natural Language Processing, NLP)는 인간의 언어를 컴퓨터가 이해하고 처리할 수 있도록 하는 인공지능의 한 분야.
> 자연어는 사람들이 일상적으로 사용하는 언어를 의미하며, 자연어 처리는 이러한 자연어를 이해하고 분석하는 작업을 포함

### "머신러닝에 텍스트를 넣기 위해서는 숫자로 반드시 변경!" (형태소분석)

#### 쪼갠 형태소를 가지고 벡터화 -> 어휘사전 구축 -> 새로운 text 인코딩


<img width="1617" alt="Screenshot 2023-07-17 at 6 28 06 PM" src="https://github.com/LaVita337/DH_CodeChronicles/assets/107906605/d2a5929f-cc00-48ee-9eb9-f5b7adad9da5">

> ## 벡터화? 인코딩?
> 인코딩은 데이터를 다른 형태로 변환하는 과정을 일반적으로 의미하며, 텍스트 데이터의 벡터화는 텍스트를 수치 형태로 변환하는 특정한 종류의 인코딩 작업을 의미
> 벡터화는 텍스트 데이터의 특징을 수치 형태로 표현하여 기계 학습 모델에 입력할 수 있는 형태로 만드는 것을 목적으로 함


## 텍스트 데이터를 벡터로 변환하는 데 사용되는 피쳐 추출 방법
### CountVectorizer에서 보완된 방법: TfidfVectorizer
<img width="1583" alt="Screenshot 2023-07-17 at 6 28 43 PM" src="https://github.com/LaVita337/DH_CodeChronicles/assets/107906605/dcb1cb1d-27ee-4dc3-b9fb-6c27a49b436f">

### TF-IDF

> TF-IDF(Term Frequency-Inverse Document Frequency)는 정보 검색 및 텍스트 마이닝 분야에서 널리 사용되는 가중치 계산 방법, 이 방법은 특정 문서 내에서 특정 용어의 중요성을 측정하는 데 사용됨

> TF(Term Frequency)는 특정 문서 내에서 용어가 나타나는 빈도를 측정. 즉, 문서에서 용어가 얼마나 자주 나타나는지를 나타냄
> 보통은 문서 내에서 용어의 출현 횟수를 용어의 총 등장 횟수로 나눠 정규화

> IDF(Inverse Document Frequency)는 특정 용어의 정보를 문서 집합 전체에서 얼마나 중요한지를 측정. IDF는 로그 역빈도를 사용하여 계산되며,
> 문서 집합 전체에서 특정 용어가 나타나는 문서의 수의 역수를 의미.  즉, **특정 용어가 전체 문서 집합에서 많이 나타날수록 IDF 값은 낮아짐.**

### CountVectorizer과TfidfVectorizer의 차이
<img width="686" alt="Screenshot 2023-07-18 at 2 50 58 PM" src="https://github.com/LaVita337/DH_CodeChronicles/assets/107906605/372c1a19-66d6-4315-8ed5-c065eb888eab">


### CountVectorizer 장단점
<img width="288" alt="Screenshot 2023-07-18 at 2 46 39 PM" src="https://github.com/LaVita337/DH_CodeChronicles/assets/107906605/71cdf1ba-f1b3-4d14-bd3a-fd32729d2620">

### TfidfVectorizer 장단점
<img width="270" alt="Screenshot 2023-07-18 at 2 46 50 PM" src="https://github.com/LaVita337/DH_CodeChronicles/assets/107906605/f02b340a-f94e-4d41-877b-37905050f275">

