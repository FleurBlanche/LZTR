package dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import dao.QuestionnaireDao;
import model.Questionnaire;

public class QuestionnaireDaoImpl extends HibernateDaoSupport implements QuestionnaireDao {

	/* (non-Javadoc)
	 * @see dao.impl.QuestionnaireDao#addQuestionnaire(model.Questionnaire)
	 */
	@Override
	public Integer addQuestionnaire(Questionnaire ques) {
		return (Integer) getHibernateTemplate().save(ques);
	}

	/* (non-Javadoc)
	 * @see dao.impl.QuestionnaireDao#deleteQuestionnaire(model.Questionnaire)
	 */
	@Override
	public void deleteQuestionnaire(Questionnaire ques) {
		getHibernateTemplate().delete(ques);
	}

	/* (non-Javadoc)
	 * @see dao.impl.QuestionnaireDao#updateQuestionnaire(model.Questionnaire)
	 */
	@Override
	public void updateQuestionnaire(Questionnaire ques) {
		getHibernateTemplate().merge(ques);
	}

	/* (non-Javadoc)
	 * @see dao.impl.QuestionnaireDao#getQuestionnaireById(int)
	 */
	@Override
	public Questionnaire getQuestionnaireById(int id) {
		@SuppressWarnings("unchecked")
		List<Questionnaire> quess = (List<Questionnaire>) getHibernateTemplate().find(
				"from Questionnaire as q where q.id=?", id);
		Questionnaire ques = quess.size() > 0 ? quess.get(0) : null;
		return ques;
	}

	/* (non-Javadoc)
	 * @see dao.impl.QuestionnaireDao#getAllQuestionnaires()
	 */
	@Override
	public List<Questionnaire> getAllQuestionnaires() {
		@SuppressWarnings("unchecked")
		List<Questionnaire> quess = (List<Questionnaire>) getHibernateTemplate()
				.find("from Questionnaire");
		return quess;
	}

}
