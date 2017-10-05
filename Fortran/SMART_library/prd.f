      REAL FUNCTION PRD(X,MV,EVEC,N,K)
C
CD        CODED BY F.KIMURA , CHANGED FROM MQD2 BY WAKA
CP        PROJECTION DISTANCE
C
CA        X : FEATURE VECTOR
CA        MV : MEAN VECTOR
CA        EVEC : EIGENVECTORS OF COVARIANCE MATRIX
CA        N : FEATURE SIZE
CA        K : KEISAN NI TSUKAU EIGENVECTOR NO KOSU
C
CS        PRD(X,MV,EVEC,N,K)
C
      REAL MV(N),EVEC(N,K),X(N)
      PRD=0.0
      SD=0.0
      DO 50 I=1,N
          SD=SD+(X(I)-MV(I))**2
   50 CONTINUE
      IF(K.EQ.0) GOTO 110
      DO 100 I=1,K
          P=0.0
          DO 200 J=1,N
              P=P+EVEC(J,I)*(X(J)-MV(J))
  200     CONTINUE
          PRD=PRD+P*P
  100 CONTINUE
  110 PRD=(SD-PRD)
C     WRITE(6,*) PRD
      RETURN
      END