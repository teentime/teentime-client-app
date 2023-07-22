import styles from '@/styles/Home.module.css'
import BottomNavigation from './components/BottomNavigation'
import Image from 'next/image'

const Home = () => {
  return (
    <div>
      <div>안녕하세요, 김틴타님!</div>
      <div>
        <div>이번 주 급식</div>
        <div>
          <div>
            <div>6월 30일 금 <span><Image/> 3.1</span></div>
            <div>
              햄김치마요덮밥
              유부장국
              과일샐러드
              새송이파프리카볶음
              깍두기
              핫도그
            </div>
            <button>리뷰 작성</button>
          </div>
        </div>
      </div>
      <div>
        <div>
          <span>오늘의 할 일</span>
          <Image/>
        </div>
        <div>
          <div>
            <input/>
            <span>할 일1</span>
            <Image/>
          </div>
        </div>
      </div>
      <div>
        <div>새 일정</div>
        <div>
          <div>7월</div>
          <div>

          </div>
        </div>
        <div>
          <div>
            <div>1일</div>
            <div>
              <div>동아리명 · 시간 · 인원</div>
              <div>일정 제목</div>
            </div>
            <input/>
          </div>
        </div>
      </div>
      <div>
        <div>새 글</div>
        <div>
          <div>
            <div>
              <img/>
            </div>
            <div>
              <div>제목입니다.</div>
              <div>내용입니다. 내용입니다. 내용입니다. 내용입니다. 내용입니다.</div>
            </div>
            <div className={styles.bottom}>
              <div className={styles.heart}>
                <Image src='/assets/filledHeart.svg' alt='FilledHeart' width={24} height={24}/><span className={styles.text}> 50+</span>
              </div>
              <div className={styles.comment}>
                <Image src='/assets/comment.svg' alt='Comment' width={24} height={24}/><span className={styles.text}> 50+</span>
              </div>
            </div>
          </div>
        </div>
      </div>
      <BottomNavigation url='/'/>
    </div>
  )
}


export default Home