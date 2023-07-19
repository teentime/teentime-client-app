import styles from '@/styles/SignUp.module.css'
import Header from '../components/Header'
import Link from 'next/link'
import Image from 'next/image'

const SignUp = () => {
  return (
    <div className={styles.container}>
      <Header title='회원가입'/>
      <form className={styles.signup_container}>
        <div style={{width: '100%'}}>
          <div className={styles.input_container}>
            <label className={styles.label}>닉네임</label>
            <div className={styles.input_box}>
              <input className={styles.input} type='text' placeholder='닉네임을 입력해주세요'/>
              <button className={styles.sub_btn}>중복확인</button>
            </div>
          </div>
          <div className={styles.input_container}>
            <label className={styles.label}>비밀번호</label>
            <input className={styles.input} type='password' placeholder='숫자, 영문을 조합한 7자 이상의 조합'/>
            <Image/>
          </div>
          <div className={styles.input_container}>
            <label className={styles.label}>학교 등록</label>
            <div className={styles.input_box}>
              <input className={styles.input} placeholder='본인의 학교를 등록하세요' disabled/>
              <button className={styles.sub_btn}>검색하기</button>
            </div>
          </div>
          <div className={styles.input_container}>
            <label className={styles.label}>학교 이메일</label>
            <div className={styles.input_box}>
              <input className={styles.input} type='email' placeholder='이메일을 입력해주세요'/>
              <button className={styles.sub_btn}>인증하기</button>
            </div>
          </div>
          <div className={styles.input_container}>
            <label className={styles.label}>휴대폰 번호</label>
            <div className={styles.input_box}>
              <input className={styles.input} type='number' placeholder='휴대폰 번호를 입력해주세요'/>
              <button className={styles.sub_btn}>인증하기</button>
            </div>
          </div>
        </div>
        <div style={{width: '100%'}}>
          <div className={styles.agreement}>
            <input type="checkbox" id={styles.chk}/>
            <label htmlFor="chk"></label> 개인정보 수집 및 이용 동의 <Link className={styles.details} href='#'>자세히</Link>
          </div>
          <button className={styles.signup_btn}>회원가입</button>
        </div>
      </form>
    </div>
  )
}

export default SignUp