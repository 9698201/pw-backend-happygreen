from django.contrib import admin
from .models import Quiz, Domanda, Risposta, RisultatoQuiz


class RispostaInline(admin.TabularInline):
    model = Risposta
    extra = 4
    max_num = 6


class DomandaInline(admin.StackedInline):
    model = Domanda
    extra = 1
    inlines = [RispostaInline]


@admin.register(Quiz)
class QuizAdmin(admin.ModelAdmin):
    list_display = ['titolo', 'get_numero_domande', 'get_numero_partecipanti']
    list_filter = ['titolo']
    search_fields = ['titolo', 'descrizione']
    inlines = [DomandaInline]

    def get_numero_domande(self, obj):
        return obj.domande.count()

    get_numero_domande.short_description = 'N° Domande'

    def get_numero_partecipanti(self, obj):
        return RisultatoQuiz.objects.filter(quiz=obj).count()

    get_numero_partecipanti.short_description = 'N° Partecipanti'


@admin.register(Domanda)
class DomandaAdmin(admin.ModelAdmin):
    list_display = ['testo_breve', 'quiz', 'get_numero_risposte']
    list_filter = ['quiz']
    search_fields = ['testo']
    inlines = [RispostaInline]

    def testo_breve(self, obj):
        return obj.testo[:100] + "..." if len(obj.testo) > 100 else obj.testo

    testo_breve.short_description = 'Testo Domanda'

    def get_numero_risposte(self, obj):
        return obj.risposte.count()

    get_numero_risposte.short_description = 'N° Risposte'


@admin.register(Risposta)
class RispostaAdmin(admin.ModelAdmin):
    list_display = ['testo_breve', 'domanda_breve', 'corretta']
    list_filter = ['corretta', 'domanda__quiz']
    search_fields = ['testo', 'domanda__testo']

    def testo_breve(self, obj):
        return obj.testo[:50] + "..." if len(obj.testo) > 50 else obj.testo

    testo_breve.short_description = 'Risposta'

    def domanda_breve(self, obj):
        return obj.domanda.testo[:50] + "..." if len(obj.domanda.testo) > 50 else obj.domanda.testo

    domanda_breve.short_description = 'Domanda'


@admin.register(RisultatoQuiz)
class RisultatoQuizAdmin(admin.ModelAdmin):
    list_display = ['utente', 'quiz', 'punteggio', 'data']
    list_filter = ['quiz', 'data', 'punteggio']
    search_fields = ['utente__username', 'quiz__titolo']
    readonly_fields = ['data']

    def has_add_permission(self, request):
        return False  # I risultati vengono creati solo tramite API